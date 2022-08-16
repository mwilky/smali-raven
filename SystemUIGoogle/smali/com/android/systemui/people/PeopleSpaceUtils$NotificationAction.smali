.class public final enum Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;
.super Ljava/lang/Enum;
.source "PeopleSpaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/PeopleSpaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

.field public static final enum POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

.field public static final enum REMOVED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    const/4 v1, 0x0

    const-string v2, "POSTED"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    new-instance v2, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    const/4 v3, 0x1

    const-string v4, "REMOVED"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->REMOVED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->$VALUES:[Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;
    .locals 1

    const-class v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;
    .locals 1

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->$VALUES:[Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-virtual {v0}, [Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    return-object v0
.end method
