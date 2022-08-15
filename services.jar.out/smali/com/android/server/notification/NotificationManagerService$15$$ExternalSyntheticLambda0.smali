.class public final synthetic Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$15;->$r8$lambda$uhN0Uv7Gm10MZbHY2JPbkId0Nro(III)Z

    move-result p0

    return p0
.end method
