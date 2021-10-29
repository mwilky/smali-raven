.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->$r8$lambda$XCDDR6ArlUzy08pCx0r2y365uFg(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
