.class public Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;
.super Ljava/lang/Object;
.source "SecurityContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/security/SecurityContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverallStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;
    }
.end annotation


# instance fields
.field private mStatusSecurityLevel:Lcom/google/android/settings/security/StatusSecurityLevel;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->access$700(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->access$800(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;->access$900(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;)Lcom/google/android/settings/security/StatusSecurityLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mStatusSecurityLevel:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;Lcom/google/android/settings/security/SecurityContentManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;-><init>(Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;

    invoke-direct {v0}, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getStatusSecurityLevel()Lcom/google/android/settings/security/StatusSecurityLevel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mStatusSecurityLevel:Lcom/google/android/settings/security/StatusSecurityLevel;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$OverallStatus;->mTitle:Ljava/lang/String;

    return-object p0
.end method
