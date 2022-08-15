.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Lcom/android/server/am/UserState;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/am/UserState;

    iput-boolean p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/am/UserState;

    iget-boolean p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserController;->$r8$lambda$a51w2Ray_AdX_yt3S8frhqfJ-e0(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    return-void
.end method
