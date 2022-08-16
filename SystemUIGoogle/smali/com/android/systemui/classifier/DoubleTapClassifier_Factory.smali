.class public final Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;
.super Ljava/lang/Object;
.source "DoubleTapClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dataProvider:Ljavax/inject/Provider;

.field public final doubleTapSlopProvider:Ljavax/inject/Provider;

.field public final doubleTapTimeMsProvider:Ljavax/inject/Provider;

.field public final singleTapClassifierProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->singleTapClassifierProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapSlopProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapTimeMsProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->singleTapClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/classifier/SingleTapClassifier;

    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapSlopProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapTimeMsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance p0, Lcom/android/systemui/classifier/DoubleTapClassifier;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/DoubleTapClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/classifier/SingleTapClassifier;FJ)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->singleTapClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object v2, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapSlopProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/classifier/DoubleTapClassifier_Factory;->doubleTapTimeMsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance v3, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/broadcast/BroadcastSender;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
