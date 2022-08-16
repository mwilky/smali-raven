.class public final Lcom/android/systemui/media/MediaViewController$stateCallback$1;
.super Ljava/lang/Object;
.source "MediaViewController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostStatesManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/media/MediaViewLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->this$0:Lcom/android/systemui/media/MediaViewController;

    iget p2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    if-eq p1, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    if-ne p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    :cond_1
    return-void
.end method
