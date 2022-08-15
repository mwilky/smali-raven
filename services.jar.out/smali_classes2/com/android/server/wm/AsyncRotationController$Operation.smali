.class public Lcom/android/server/wm/AsyncRotationController$Operation;
.super Ljava/lang/Object;
.source "AsyncRotationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AsyncRotationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field public final mAction:I

.field public mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mIsCompletionPending:Z

.field public mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    return-void
.end method
