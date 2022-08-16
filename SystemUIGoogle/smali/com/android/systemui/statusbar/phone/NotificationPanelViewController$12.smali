.class public final Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQsPanelScrollChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLargeScreenShadeHeaderController:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsScrollY:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsScrollY:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollY(I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQs()V

    :cond_1
    return-void
.end method
