.class public Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "SmartspacePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/smartspace/ISmartspaceCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-static {p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->-$$Nest$fgetmCallbacks(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->this$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->destroy()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/app/smartspace/ISmartspaceCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$1;->onCallbackDied(Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method
