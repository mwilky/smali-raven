.class public Lcom/android/server/am/UserController$3;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Lcom/android/server/am/UserState$KeyEvictedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->restartUser(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;

.field public final synthetic val$foreground:Z


# direct methods
.method public static synthetic $r8$lambda$RYrhcDgczNYY-O19G6cwCRKBktI(Lcom/android/server/am/UserController$3;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController$3;->lambda$keyEvicted$0(IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$keyEvicted$0(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method


# virtual methods
.method public keyEvicted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController$3;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/UserController$3;->val$foreground:Z

    new-instance v2, Lcom/android/server/am/UserController$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/am/UserController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserController$3;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
