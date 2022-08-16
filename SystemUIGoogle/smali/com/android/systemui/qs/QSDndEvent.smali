.class public final enum Lcom/android/systemui/qs/QSDndEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSDndEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_CONDITION_SELECT:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_FOREVER:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_UNTIL_ALARM:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_TIME_DOWN:Lcom/android/systemui/qs/QSDndEvent;

.field public static final enum QS_DND_TIME_UP:Lcom/android/systemui/qs/QSDndEvent;


# instance fields
.field private final _id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/qs/QSDndEvent;

    const-string v1, "QS_DND_CONDITION_SELECT"

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_CONDITION_SELECT:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v1, Lcom/android/systemui/qs/QSDndEvent;

    const-string v3, "QS_DND_TIME_UP"

    const/4 v4, 0x1

    const/16 v5, 0x1a6

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_UP:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v3, Lcom/android/systemui/qs/QSDndEvent;

    const-string v5, "QS_DND_TIME_DOWN"

    const/4 v6, 0x2

    const/16 v7, 0x1a7

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_TIME_DOWN:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v5, Lcom/android/systemui/qs/QSDndEvent;

    const-string v7, "QS_DND_DIALOG_ENABLE_FOREVER"

    const/4 v8, 0x3

    const/16 v9, 0x3b2

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_FOREVER:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v7, Lcom/android/systemui/qs/QSDndEvent;

    const-string v9, "QS_DND_DIALOG_ENABLE_UNTIL_ALARM"

    const/4 v10, 0x4

    const/16 v11, 0x3b3

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_ALARM:Lcom/android/systemui/qs/QSDndEvent;

    new-instance v9, Lcom/android/systemui/qs/QSDndEvent;

    const-string v11, "QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN"

    const/4 v12, 0x5

    const/16 v13, 0x3b4

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/qs/QSDndEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/qs/QSDndEvent;->QS_DND_DIALOG_ENABLE_UNTIL_COUNTDOWN:Lcom/android/systemui/qs/QSDndEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/systemui/qs/QSDndEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/systemui/qs/QSDndEvent;->$VALUES:[Lcom/android/systemui/qs/QSDndEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSDndEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSDndEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSDndEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSDndEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSDndEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSDndEvent;->$VALUES:[Lcom/android/systemui/qs/QSDndEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDndEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSDndEvent;->_id:I

    return p0
.end method
