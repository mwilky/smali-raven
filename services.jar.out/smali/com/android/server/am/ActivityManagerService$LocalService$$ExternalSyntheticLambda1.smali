.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->$r8$lambda$fGr7DXTc9ReC0X93vZJCB7rCz2A(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V

    return-void
.end method
