.class final Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PeopleNotificationIdentifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleTypeOfSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;->this$0:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;->this$0:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
