.class public final synthetic Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$11;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerService$11;->$r8$lambda$gs0fZI3EWuvvjhTnS6MlTcwEgYY(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V

    return-void
.end method
