(** Copyright (c) 2016-present, Facebook, Inc.

    This source code is licensed under the MIT license found in the
    LICENSE file in the root directory of this source tree. *)

open Ast
open Statement


(** Maps a key, unique to each statement for a function CFG, to type
    annotations.  They key is computed from a tuple CFG node ID and and statement
    index (see Fixpoint.forward) *)
type annotations =
  {
    key: int;
    annotations: (Access.t * AnalysisResolution.Annotation.t) list;
  }

val add: Access.t -> annotations list -> unit

val get: Access.t -> annotations list option

val remove: Access.t list -> unit
