<?php

namespace App;

class Cart
{
    public $items = null;
    public $totalPrice = 0;
    public $totalQty = 0;
//    public $shipmentPrice;

    public function __construct($oldCart)
    {
        if($oldCart) {
            $this->items = $oldCart->items;
            $this->totalPrice = $oldCart->totalPrice;
            $this->totalQty = $oldCart->totalQty;
        }
    }

    public function add($item, $id) {
        $storedItems = [
          'item' => $item,
          'qty' => 0,
          'price' => $item->price
        ];

        if ($this->items) {
            if (array_key_exists($id, $this->items)) {
                $storedItems = $this->items[$id];
            }
        }

        $storedItems['qty']++;

        $storedItems['price'] = $item->price * $storedItems['qty'];

        $this->items[$id] = $storedItems;

        $this->totalQty++;

        $this->totalPrice += $item->price;

    }

    /*
     *
     * */

    public function reduceByOne($id) {
        $this->items[$id]['qty']--;
        $this->items[$id]['price'] -= $this->items[$id]['item']['price'];
        $this->totalQty--;
        $this->totalPrice -= $this->items[$id]['item']['price'];
        if ($this->items[$id]['qty'] <= 0) {
            unset($this->items[$id]);
        }
    }

    public function delete($id) {
        $this->totalQty -= $this->items[$id]['qty'];
        $this->totalPrice -= $this->items[$id]['item']['price'] * $this->items[$id]['qty'];
        unset($this->items[$id]);
    }
}
