.class public final synthetic Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$10;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$10;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$10;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$10;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->lambda$getActiveNotificationsWithAttribution$0$NotificationManagerService$10(Ljava/util/ArrayList;)V

    return-void
.end method
