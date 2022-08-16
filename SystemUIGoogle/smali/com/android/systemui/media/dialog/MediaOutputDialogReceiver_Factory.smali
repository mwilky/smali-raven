.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;
.super Ljava/lang/Object;
.source "MediaOutputDialogReceiver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mediaOutputBroadcastDialogFactoryProvider:Ljavax/inject/Provider;

.field public final mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputBroadcastDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputBroadcastDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;-><init>(Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver_Factory;->mediaOutputBroadcastDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
