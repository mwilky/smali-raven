.class public final enum Lcom/android/systemui/privacy/PrivacyDialogEvent;
.super Ljava/lang/Enum;
.source "PrivacyDialogEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/privacy/PrivacyDialogEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

.field public static final enum PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS:Lcom/android/systemui/privacy/PrivacyDialogEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const-string v1, "PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS"

    const/4 v2, 0x0

    const/16 v3, 0x388

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_ITEM_CLICKED_TO_APP_SETTINGS:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const-string v3, "PRIVACY_DIALOG_DISMISSED"

    const/4 v4, 0x1

    const/16 v5, 0x389

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/privacy/PrivacyDialogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/systemui/privacy/PrivacyDialogEvent;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/systemui/privacy/PrivacyDialogEvent;->$VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyDialogEvent;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/privacy/PrivacyDialogEvent;
    .locals 4

    sget-object v0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->$VALUES:[Lcom/android/systemui/privacy/PrivacyDialogEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/privacy/PrivacyDialogEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/privacy/PrivacyDialogEvent;->_id:I

    return p0
.end method
