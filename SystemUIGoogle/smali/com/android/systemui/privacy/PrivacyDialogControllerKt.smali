.class public final Lcom/android/systemui/privacy/PrivacyDialogControllerKt;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"


# static fields
.field private static final defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogControllerKt;->defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    return-void
.end method

.method public static final synthetic access$getDefaultDialogProvider$p()Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;
    .locals 1

    sget-object v0, Lcom/android/systemui/privacy/PrivacyDialogControllerKt;->defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    return-object v0
.end method
