.class final enum Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
.super Ljava/lang/Enum;
.source "PeopleBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/widget/PeopleBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharedFileEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum CONTACT_URI:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum PEOPLE_TILE_KEY:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum UNKNOWN:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum WIDGET_ID:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->UNKNOWN:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v2, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const/4 v3, 0x1

    const-string v4, "WIDGET_ID"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->WIDGET_ID:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v4, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const/4 v5, 0x2

    const-string v6, "PEOPLE_TILE_KEY"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->PEOPLE_TILE_KEY:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v6, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const/4 v7, 0x3

    const-string v8, "CONTACT_URI"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->CONTACT_URI:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->$VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    .locals 1

    const-class v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    .locals 1

    sget-object v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->$VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    invoke-virtual {v0}, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-object v0
.end method
