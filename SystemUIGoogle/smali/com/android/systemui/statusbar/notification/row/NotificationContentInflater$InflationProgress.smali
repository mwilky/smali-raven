.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InflationProgress"
.end annotation


# instance fields
.field public expandedInflatedSmartReplies:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field public headsUpInflatedSmartReplies:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public inflatedContentView:Landroid/view/View;

.field public inflatedExpandedView:Landroid/view/View;

.field public inflatedHeadsUpView:Landroid/view/View;

.field public inflatedPublicView:Landroid/view/View;

.field public inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

.field public newContentView:Landroid/widget/RemoteViews;

.field public newExpandedView:Landroid/widget/RemoteViews;

.field public newHeadsUpView:Landroid/widget/RemoteViews;

.field public newPublicView:Landroid/widget/RemoteViews;

.field public packageContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
