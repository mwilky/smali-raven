.class public final synthetic Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->$r8$lambda$WusY7wQm1vEW3s6f_GskFVqUAnM(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method
