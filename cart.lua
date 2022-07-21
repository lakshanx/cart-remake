tSettings (Global)


Cart (Drawer)
............ IMPORTS 
------------ { getSizedImageUrl } from '@shopify/theme-images';
------------ CartShippingMeter from '~comp/cart-shipping-meter';
------------ CartDiscountMeter from '~comp/cart-discount-meter';
------------ CartItem from '~comp/cart-item';
------------ CartDiscountForm from '~comp/cart-discount-form';
------------ CartManualGwp from '~comp/cart-manual-gwp';
------------ CartUpsell from '~comp/cart-upsell';
------------ CartExtras from '~comp/cart-extras';
------------ CartRecentProducts from '~comp/cart-recent-products';
------------ snCart from '~mod/sn-cart';
------------ { getShippingPrice } from '~mod/shipping';
------------ { isFreeItem, isItemHasProp, isSameText, intersectTwo, formatMoney } from '~mod/utils';
------------ SvgClose from '~svg/close.svg';

............ STATE   
------------ cart
------------ loadingInit
------------ isLastStockKey
------------ itemCount
------------ subtotalPrice
------------ totalPrice
------------ comparePriceDiff
------------ loadingDiscount
------------ discountData
------------ manualGwp
------------ loadingManualGwp
------------ upsellData
------------ shippingData
------------ shippingMeter
------------ discountMeter
------------ recentProducts

............ METHODS  
------------ setCartCountEl()
------------ setCartCount()
------------ setCartData () -- ASYNC
------------ getItemModels () -- ASYNC
------------ getVariantOptions () -- ASYNC
------------ setRecentProducts () -- ASYNC
------------ getDiscountErrorExtra ()
------------ getDiscountDataDisplay ()
------------ onChangeQuantity ()
------------ onChangeVariant ()
------------ onRemoveItem ()
------------ onAddUpsell ()
------------ onApplyDiscountCode ()
------------ onRemoveDiscountCode ()
------------ onToggleManualGwp ()
------------ getStock ()
------------ handleKeyDown ()
------------ submitForm ()



-- CartShippingMeter
............ IMPORTS 
------------ { formatMoney } from '~mod/utils';

............ PROPS   
------------ current (number)
------------ target (number)
------------ progressText (string)
------------ finalText (string)


-- CartItem
............ IMPORTS 
------------ ConditionWrapper from '~comp/condition-wrapper';
------------ QuantityBox from '~comp/quantity-box';
------------ snCart from '~mod/sn-cart';
------------ {formatMoney,kebabCase} from '~mod/utils';
------------ SvgTrash from '~svg/trash.svg';
------------ SvgRecurring from '~svg/recurring.svg';
------------ SvgChevronDown from '~svg/chevron-down.svg';
------------ VariantQuantity from '~mod/variant-quantity.json';

............ PROPS  
------------ item (object)
------------ isLastStock (bool)
------------ onChangeVariant (func)
------------ onChangeQuantity (func)
------------ onRemoveItem (func)

............ METHODS  
------------ onSelectVariant ()
------------ onRemoveItem ()
------------ onChangeVariant ()
------------ onAccordionOpen ()
------------ onAccordionOpen ()



------ ConditionWrapper
............ PROPS  
------------ condition (bool)
------------ wrapper (obj?)
------------ wrapperFalse (func, ?)
------------ children (obj?)



------ QuantityBox
............ IMPORTS 
------------ { debounce } from '~mod/utils';
------------ snCart from '~mod/sn-cart';
------------ SvgPlus from '~svg/plus.svg';
------------ SvgMinus from '~svg/minus.svg';

............ PROPS  
------------ name (string)
------------ editable (bool)
------------ quantity (number)
------------ onChangeQuantity (func)
------------ allowZero (bool)
------------ productId (number)
------------ productStock (number)
------------ isLastStock (bool)
------------ isPdp (bool)

............ METHODS  
------------ onAddQuantity ()
------------ onSubtractQuantity ()
------------ onFocus ()
------------ onChangeQuantity ()
------------ changeQuantity ()



-- CartManualGwp
............ IMPORTS 
------------ { isItemIdInKey } from '~mod/utils';
------------ SvgChevronPrev from '~svg/chevron-prev.svg';
------------ SvgChevronNext from '~svg/chevron-next.svg';

............ PROPS  
------------ showScroll (bool)
------------ title (string)
------------ maxSelected (number)
------------ selectedKey (array)
------------ items(array)
------------ onAddItem (func)
------------ onRemoveItem (func)
------------ loading (bool)
------------ processingId (number)

............ METHODS  
------------ onWindowResize ()
------------ scroll ()



-- CartDiscountForm
............ IMPORTS 
------------ SvgTag from '~svg/tag.svg';
------------ SvgCloseCircle from '~svg/close-circle.svg';

............ PROPS  
------------ isApplied (bool)
------------ code (string)
------------ isAutoDiscount (bool)
------------ loading (bool)
------------ error (string)
------------ errorExtra (bool)
------------ onApply (func)
------------ onRemove (func)

............ METHODS  
------------ onToggleForm ()
------------ onTextChange ()
------------ onKeyUp ()
------------ applyDiscount ()
------------ removeDiscount ()



-- CartUpsell
............ IMPORTS 
------------ { formatMoney, kebabCase } from '~mod/utils';
------------ { gaEvent } from '~mod/analytics-event';

............ PROPS  
------------ upsell (array)
------------ onAddUpsell (func)

............ METHODS  
------------ handleClick ()



-- CartExtras
............ IMPORTS 
------------ {formatMoney} from '~mod/utils';
------------ SvgDelivery from '~svg/fast-delivery.svg';
------------ SvgAwards from '~svg/winner-award.svg';
------------ SvgMoneyback from '~svg/moneyback.svg';

............ PROPS  
------------ injectCss ()



#NOTES:
Only react component that is shared outside of the Card drawer is QuantityBox