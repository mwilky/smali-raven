.class final synthetic Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "PrivacyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/logging/PrivacyLogger;->listToString(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    invoke-direct {v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lcom/android/systemui/privacy/PrivacyItem;

    const-string v1, "log"

    const-string v2, "getLog()Ljava/lang/String;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->getLog()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
