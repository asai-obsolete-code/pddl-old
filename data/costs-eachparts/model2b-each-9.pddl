(DEFINE (PROBLEM CELL-ASSEMBLY-MODEL2B-EACH-9)
 (:DOMAIN CELL-ASSEMBLY-EACHPARTS)
 (:OBJECTS ARM - ARM B-0 B-1 B-2 B-3 B-4 B-5 B-6 B-7 B-8 - BASE PART-A-0
  PART-A-1 PART-A-2 PART-A-3 PART-A-4 PART-A-5 PART-A-6 PART-A-7 PART-A-8
  PART-B-0 PART-B-1 PART-B-2 PART-B-3 PART-B-4 PART-B-5 PART-B-6 PART-B-7
  PART-B-8 PART-C-0 PART-C-1 PART-C-2 PART-C-3 PART-C-4 PART-C-5 PART-C-6
  PART-C-7 PART-C-8 - COMPONENT TRAY-A TRAY-B TRAY-C - TRAY TABLE1 - TABLE
  SCREW-MACHINE-A SCREW-MACHINE-C - MACHINE ATTATCH-A - JOB SCREW-A -
  MACHINE-JOB ATTATCH-B - JOB ATTATCH-C - JOB SCREW-C - MACHINE-JOB)
 (:INIT (= (TOTAL-COST) 0) (= (LOADING-COST) 1) (REACHABLE ARM SCREW-MACHINE-C)
  (REACHABLE ARM SCREW-MACHINE-A) (REACHABLE ARM TABLE-IN)
  (REACHABLE ARM TABLE-OUT) (REACHABLE ARM TABLE1) (REACHABLE ARM TRAY-A)
  (REACHABLE ARM TRAY-B) (REACHABLE ARM TRAY-C)
  (= (MOVE-COST TABLE1 TABLE1) 1000) (= (MOVE-COST TABLE1 SCREW-MACHINE-A) 2)
  (= (MOVE-COST TABLE1 TRAY-A) 3) (= (MOVE-COST TABLE1 TRAY-B) 4)
  (= (MOVE-COST TABLE1 TRAY-C) 5) (= (MOVE-COST TABLE1 SCREW-MACHINE-C) 6)
  (= (MOVE-COST TABLE1 TABLE-OUT) 7) (= (MOVE-COST TABLE1 TABLE-IN) 8)
  (= (MOVE-COST SCREW-MACHINE-A TABLE1) 8)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-A) 1000)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-A) 2)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-B) 3)
  (= (MOVE-COST SCREW-MACHINE-A TRAY-C) 4)
  (= (MOVE-COST SCREW-MACHINE-A SCREW-MACHINE-C) 5)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-OUT) 6)
  (= (MOVE-COST SCREW-MACHINE-A TABLE-IN) 7) (= (MOVE-COST TRAY-A TABLE1) 7)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-A) 8) (= (MOVE-COST TRAY-A TRAY-A) 1000)
  (= (MOVE-COST TRAY-A TRAY-B) 2) (= (MOVE-COST TRAY-A TRAY-C) 3)
  (= (MOVE-COST TRAY-A SCREW-MACHINE-C) 4) (= (MOVE-COST TRAY-A TABLE-OUT) 5)
  (= (MOVE-COST TRAY-A TABLE-IN) 6) (= (MOVE-COST TRAY-B TABLE1) 6)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-A) 7) (= (MOVE-COST TRAY-B TRAY-A) 8)
  (= (MOVE-COST TRAY-B TRAY-B) 1000) (= (MOVE-COST TRAY-B TRAY-C) 2)
  (= (MOVE-COST TRAY-B SCREW-MACHINE-C) 3) (= (MOVE-COST TRAY-B TABLE-OUT) 4)
  (= (MOVE-COST TRAY-B TABLE-IN) 5) (= (MOVE-COST TRAY-C TABLE1) 5)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-A) 6) (= (MOVE-COST TRAY-C TRAY-A) 7)
  (= (MOVE-COST TRAY-C TRAY-B) 8) (= (MOVE-COST TRAY-C TRAY-C) 1000)
  (= (MOVE-COST TRAY-C SCREW-MACHINE-C) 2) (= (MOVE-COST TRAY-C TABLE-OUT) 3)
  (= (MOVE-COST TRAY-C TABLE-IN) 4) (= (MOVE-COST SCREW-MACHINE-C TABLE1) 4)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-A) 5)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-A) 6)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-B) 7)
  (= (MOVE-COST SCREW-MACHINE-C TRAY-C) 8)
  (= (MOVE-COST SCREW-MACHINE-C SCREW-MACHINE-C) 1000)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-OUT) 2)
  (= (MOVE-COST SCREW-MACHINE-C TABLE-IN) 3) (= (MOVE-COST TABLE-OUT TABLE1) 3)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-A) 4)
  (= (MOVE-COST TABLE-OUT TRAY-A) 5) (= (MOVE-COST TABLE-OUT TRAY-B) 6)
  (= (MOVE-COST TABLE-OUT TRAY-C) 7)
  (= (MOVE-COST TABLE-OUT SCREW-MACHINE-C) 8)
  (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000) (= (MOVE-COST TABLE-OUT TABLE-IN) 2)
  (= (MOVE-COST TABLE-IN TABLE1) 2) (= (MOVE-COST TABLE-IN SCREW-MACHINE-A) 3)
  (= (MOVE-COST TABLE-IN TRAY-A) 4) (= (MOVE-COST TABLE-IN TRAY-B) 5)
  (= (MOVE-COST TABLE-IN TRAY-C) 6) (= (MOVE-COST TABLE-IN SCREW-MACHINE-C) 7)
  (= (MOVE-COST TABLE-IN TABLE-OUT) 8) (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
  (CONNECTED CARRY-IN TABLE-IN) (CONNECTED TABLE-OUT CARRY-OUT)
  (= (JOB-COST SCREW-C) 2) (DEPENDS ATTATCH-C SCREW-C)
  (JOB-AVAILABLE-AT SCREW-C SCREW-MACHINE-C) (AT PART-C-8 TRAY-C)
  (USES ATTATCH-C PART-C-8) (AT PART-C-7 TRAY-C) (USES ATTATCH-C PART-C-7)
  (AT PART-C-6 TRAY-C) (USES ATTATCH-C PART-C-6) (AT PART-C-5 TRAY-C)
  (USES ATTATCH-C PART-C-5) (AT PART-C-4 TRAY-C) (USES ATTATCH-C PART-C-4)
  (AT PART-C-3 TRAY-C) (USES ATTATCH-C PART-C-3) (AT PART-C-2 TRAY-C)
  (USES ATTATCH-C PART-C-2) (AT PART-C-1 TRAY-C) (USES ATTATCH-C PART-C-1)
  (AT PART-C-0 TRAY-C) (USES ATTATCH-C PART-C-0) (= (JOB-COST ATTATCH-C) 3)
  (DEPENDS ATTATCH-B ATTATCH-C) (JOB-AVAILABLE-AT ATTATCH-C TABLE1)
  (AT PART-B-8 TRAY-B) (USES ATTATCH-B PART-B-8) (AT PART-B-7 TRAY-B)
  (USES ATTATCH-B PART-B-7) (AT PART-B-6 TRAY-B) (USES ATTATCH-B PART-B-6)
  (AT PART-B-5 TRAY-B) (USES ATTATCH-B PART-B-5) (AT PART-B-4 TRAY-B)
  (USES ATTATCH-B PART-B-4) (AT PART-B-3 TRAY-B) (USES ATTATCH-B PART-B-3)
  (AT PART-B-2 TRAY-B) (USES ATTATCH-B PART-B-2) (AT PART-B-1 TRAY-B)
  (USES ATTATCH-B PART-B-1) (AT PART-B-0 TRAY-B) (USES ATTATCH-B PART-B-0)
  (= (JOB-COST ATTATCH-B) 3) (DEPENDS SCREW-A ATTATCH-B)
  (JOB-AVAILABLE-AT ATTATCH-B TABLE1) (= (JOB-COST SCREW-A) 2)
  (DEPENDS ATTATCH-A SCREW-A) (JOB-AVAILABLE-AT SCREW-A SCREW-MACHINE-A)
  (AT PART-A-8 TRAY-A) (USES ATTATCH-A PART-A-8) (AT PART-A-7 TRAY-A)
  (USES ATTATCH-A PART-A-7) (AT PART-A-6 TRAY-A) (USES ATTATCH-A PART-A-6)
  (AT PART-A-5 TRAY-A) (USES ATTATCH-A PART-A-5) (AT PART-A-4 TRAY-A)
  (USES ATTATCH-A PART-A-4) (AT PART-A-3 TRAY-A) (USES ATTATCH-A PART-A-3)
  (AT PART-A-2 TRAY-A) (USES ATTATCH-A PART-A-2) (AT PART-A-1 TRAY-A)
  (USES ATTATCH-A PART-A-1) (AT PART-A-0 TRAY-A) (USES ATTATCH-A PART-A-0)
  (= (JOB-COST ATTATCH-A) 3) (DEPENDS NOTHING-DONE ATTATCH-A)
  (JOB-AVAILABLE-AT ATTATCH-A TABLE-IN) (= (JOB-COST NOTHING-DONE) 0)
  (COMPONENT-BASE PART-A-0 B-0) (COMPONENT-BASE PART-A-1 B-1)
  (COMPONENT-BASE PART-A-2 B-2) (COMPONENT-BASE PART-A-3 B-3)
  (COMPONENT-BASE PART-A-4 B-4) (COMPONENT-BASE PART-A-5 B-5)
  (COMPONENT-BASE PART-A-6 B-6) (COMPONENT-BASE PART-A-7 B-7)
  (COMPONENT-BASE PART-A-8 B-8) (COMPONENT-BASE PART-B-0 B-0)
  (COMPONENT-BASE PART-B-1 B-1) (COMPONENT-BASE PART-B-2 B-2)
  (COMPONENT-BASE PART-B-3 B-3) (COMPONENT-BASE PART-B-4 B-4)
  (COMPONENT-BASE PART-B-5 B-5) (COMPONENT-BASE PART-B-6 B-6)
  (COMPONENT-BASE PART-B-7 B-7) (COMPONENT-BASE PART-B-8 B-8)
  (COMPONENT-BASE PART-C-0 B-0) (COMPONENT-BASE PART-C-1 B-1)
  (COMPONENT-BASE PART-C-2 B-2) (COMPONENT-BASE PART-C-3 B-3)
  (COMPONENT-BASE PART-C-4 B-4) (COMPONENT-BASE PART-C-5 B-5)
  (COMPONENT-BASE PART-C-6 B-6) (COMPONENT-BASE PART-C-7 B-7)
  (COMPONENT-BASE PART-C-8 B-8) (AT B-0 CARRY-IN) (FINISHED NOTHING-DONE B-0)
  (AT B-1 CARRY-IN) (FINISHED NOTHING-DONE B-1) (AT B-2 CARRY-IN)
  (FINISHED NOTHING-DONE B-2) (AT B-3 CARRY-IN) (FINISHED NOTHING-DONE B-3)
  (AT B-4 CARRY-IN) (FINISHED NOTHING-DONE B-4) (AT B-5 CARRY-IN)
  (FINISHED NOTHING-DONE B-5) (AT B-6 CARRY-IN) (FINISHED NOTHING-DONE B-6)
  (AT B-7 CARRY-IN) (FINISHED NOTHING-DONE B-7) (AT B-8 CARRY-IN)
  (FINISHED NOTHING-DONE B-8) (FREE ARM) (AT ARM TABLE-IN)
  (ARM-PRESENT TABLE-IN))
 (:GOAL
  (AND (AT B-0 CARRY-OUT) (FINISHED SCREW-C B-0) (AT B-1 CARRY-OUT)
       (FINISHED SCREW-C B-1) (AT B-2 CARRY-OUT) (FINISHED SCREW-C B-2)
       (AT B-3 CARRY-OUT) (FINISHED SCREW-C B-3) (AT B-4 CARRY-OUT)
       (FINISHED SCREW-C B-4) (AT B-5 CARRY-OUT) (FINISHED SCREW-C B-5)
       (AT B-6 CARRY-OUT) (FINISHED SCREW-C B-6) (AT B-7 CARRY-OUT)
       (FINISHED SCREW-C B-7) (AT B-8 CARRY-OUT) (FINISHED SCREW-C B-8)))
 (:METRIC MINIMIZE (TOTAL-COST)))