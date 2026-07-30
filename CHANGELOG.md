
## 1.1.0
  * Add structured pre-format values to `TimeAgoResult` through the new
    `TimeAgoValue` record type.
  * Add `TimeAgoUnit.upperBound()` and configurable default next-unit
    relationships.
  * Add `TimeAgoRenderer` for reusable `TimeAgoResult` rendering and live
    subscription coordination.
  * Refactor `TimeAgoBuilder` to use `TimeAgoRenderer` and the `BuildContext`
    formatting extensions.
  * **Breaking:** Direct `TimeAgoResult` construction now requires an explicit
    values list.

## 1.0.1
  * Broaden `intl` compatibility to support Flutter SDK-pinned versions from
    0.18.0 through 0.20.x.

## 1.0.0
  * Initial commit
