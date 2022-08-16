.class public final Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "SquishyViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$1;->this$0:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$1;->this$0:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->mScreenRotation:I

    return-void
.end method
