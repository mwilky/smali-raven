.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$2:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$1:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;->f$2:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$yzPUmCmV5ie1pLz_z1FzQQ2nIQU(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
