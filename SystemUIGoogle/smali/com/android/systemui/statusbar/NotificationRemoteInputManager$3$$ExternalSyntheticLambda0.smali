.class public final synthetic Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->$r8$lambda$hTnmEtCkO3W_jnwswH4qUwsfqR0(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
