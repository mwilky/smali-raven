.class final synthetic Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "PrivacyLogger.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    invoke-direct {v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/android/systemui/privacy/PrivacyItem;

    const-string v1, "log"

    const-string v2, "getLog()Ljava/lang/String;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object p0, p1, Lcom/android/systemui/privacy/PrivacyItem;->log:Ljava/lang/String;

    return-object p0
.end method
