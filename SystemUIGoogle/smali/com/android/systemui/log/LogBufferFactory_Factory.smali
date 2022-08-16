.class public final Lcom/android/systemui/log/LogBufferFactory_Factory;
.super Ljava/lang/Object;
.source "LogBufferFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final logcatEchoTrackerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$1(Ljavax/inject/Provider;Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;)Lcom/android/systemui/log/LogBufferFactory_Factory;
    .locals 2

    new-instance v0, Lcom/android/systemui/log/LogBufferFactory_Factory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/log/LogBufferFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogcatEchoTracker;

    new-instance v1, Lcom/android/systemui/log/LogBufferFactory;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/log/LogBufferFactory;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/log/LogBufferFactory_Factory;->logcatEchoTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
