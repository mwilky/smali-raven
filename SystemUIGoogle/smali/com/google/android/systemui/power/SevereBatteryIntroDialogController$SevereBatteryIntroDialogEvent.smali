.class final enum Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;
.super Ljava/lang/Enum;
.source "SevereBatteryIntroDialogController.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/power/SevereBatteryIntroDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SevereBatteryIntroDialogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

.field public static final enum SEVERE_BATTERY_INTRO_DIALOG:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

.field public static final enum SEVERE_BATTERY_INTRO_DIALOG_CANCEL:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

.field public static final enum SEVERE_BATTERY_INTRO_DIALOG_DISMISS_EVENT:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

.field public static final enum SEVERE_BATTERY_INTRO_DIALOG_TURN_ON:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    const-string v1, "SEVERE_BATTERY_INTRO_DIALOG"

    const/4 v2, 0x0

    const/16 v3, 0x3e3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    new-instance v1, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    const-string v3, "SEVERE_BATTERY_INTRO_DIALOG_TURN_ON"

    const/4 v4, 0x1

    const/16 v5, 0x3e4

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG_TURN_ON:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    new-instance v3, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    const-string v5, "SEVERE_BATTERY_INTRO_DIALOG_CANCEL"

    const/4 v6, 0x2

    const/16 v7, 0x3e5

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG_CANCEL:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    new-instance v5, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    const-string v7, "SEVERE_BATTERY_INTRO_DIALOG_DISMISS_EVENT"

    const/4 v8, 0x3

    const/16 v9, 0x3e6

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->SEVERE_BATTERY_INTRO_DIALOG_DISMISS_EVENT:Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->$VALUES:[Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

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

    iput p3, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->$VALUES:[Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/power/SevereBatteryIntroDialogController$SevereBatteryIntroDialogEvent;->mId:I

    return p0
.end method
