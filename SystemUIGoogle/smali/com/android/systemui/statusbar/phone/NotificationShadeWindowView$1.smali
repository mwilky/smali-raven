.class public final Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;
.super Ljava/lang/Object;
.source "NotificationShadeWindowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic val$mode:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    const/4 p0, 0x1

    return p0
.end method
