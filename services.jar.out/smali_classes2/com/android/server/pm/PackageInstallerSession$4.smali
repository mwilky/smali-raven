.class Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->access$2400(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Landroid/os/Bundle;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Landroid/content/IntentSender;

    iget v12, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->access$2100(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerSession;->access$2200(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v7

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v8, v5, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v5, v15

    move-object v9, v3

    move v10, v12

    move-object v11, v13

    move/from16 v16, v12

    move-object v12, v14

    invoke-static/range {v4 .. v12}, Lcom/android/server/pm/PackageInstallerSession;->access$2300(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$2000(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1900(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1800(Lcom/android/server/pm/PackageInstallerSession;)V

    nop

    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
