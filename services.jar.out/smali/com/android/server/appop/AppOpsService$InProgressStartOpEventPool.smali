.class Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
.super Landroid/util/Pools$SimplePool;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProgressStartOpEventPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SimplePool<",
        "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    return-void
.end method


# virtual methods
.method acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v4

    move-object/from16 v15, p9

    move-object/from16 v14, p10

    invoke-virtual {v4, v1, v15, v14}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_0

    :cond_0
    move-object/from16 v15, p9

    move-object/from16 v14, p10

    move-object/from16 v18, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v16

    move-object v3, v2

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, v18

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V

    return-object v2

    :cond_1
    new-instance v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/16 v17, 0x0

    move-object v4, v3

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p11

    move-object/from16 v13, v18

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v4 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;IIILcom/android/server/appop/AppOpsService$1;)V

    return-object v3
.end method
