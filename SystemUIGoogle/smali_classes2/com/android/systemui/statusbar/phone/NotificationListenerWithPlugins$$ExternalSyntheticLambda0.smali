.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->$r8$lambda$IcnStJv_sJPW5L4qabGzd1I7BiI(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;Lcom/android/systemui/plugins/NotificationListenerController;)V

    return-void
.end method
