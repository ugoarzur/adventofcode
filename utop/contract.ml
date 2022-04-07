type address = string
type token_id = int
type quantity = int

(* Actions *)
type mint_request = {
  metadata: bytes;
  owner: address;
}
type burn_request = {
  token_id: token_id;
}
type transfer_request_item = {
  to_: address;
  token_id: token_id;
  amount: quantity;
}
type transfer_request_item = {
  to_: address;
  token_id: token_id;
  amount: quantity;
}

type transfer_request = {
  from_: address;
  txs: transfer_request_item list;
}

type update_operator_request_param = {
  owner : address;
  operator : address;
  token_id: token_id;
}

type update_operator_request =
  | Add_operator of update_operator_request_param
  | Remove_operator of update_operator_request_param

type balance_of_request_request = {
  owner: address;
  token_id: token_id;
}

type balance_of_request_response = {
  request: balance_of_request_request;
  balance: quantity;
}

type balance_of_request = {
  requests : balance_of_request_request list;
  callback : (balance_of_request_response list) contract;
}

type action =
| Mint of mint_request
| Burn of burn_request
| Transfer of transfer_request list
| Update_operators of update_operator_request list
| Balance_of of balance_of_request

let main (action, store : action * storage) : return =
  match action with
  | Mint(req) -> mint req store
  | Burn(req) -> burn req store
  | Transfer(reqs) -> transfer reqs store
  | Update_operators(reqs) -> update_operators reqs store
  | Balance_of(req) -> balance_of req store