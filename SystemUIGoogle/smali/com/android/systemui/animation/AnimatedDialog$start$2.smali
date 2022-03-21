.class final synthetic Lcom/android/systemui/animation/AnimatedDialog$start$2;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$tmp0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$tmp0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {p0}, Lcom/android/systemui/animation/AnimatedDialog;->access$onDialogDismissed(Lcom/android/systemui/animation/AnimatedDialog;)V

    return-void
.end method
