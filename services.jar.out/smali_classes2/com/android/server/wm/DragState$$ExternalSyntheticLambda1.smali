.class public final synthetic Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lcom/android/server/wm/DragState;->$r8$lambda$T_zKs9FbvhoXvj_XVVNfxio0yrs(Landroid/animation/ValueAnimator;)V

    return-void
.end method
