.class public Lcom/google/android/settings/security/SecurityContentManager$Entry;
.super Ljava/lang/Object;
.source "SecurityContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/security/SecurityContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;
    }
.end annotation


# instance fields
.field private mOnClickBundle:Landroid/os/Bundle;

.field private mOrder:I

.field private mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

.field private mSecuritySourceId:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$000(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$100(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSummary:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$200(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)Lcom/google/android/settings/security/SecurityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$300(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mOnClickBundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$400(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mOrder:I

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;->access$500(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSecuritySourceId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;Lcom/google/android/settings/security/SecurityContentManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager$Entry;-><init>(Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;

    invoke-direct {v0}, Lcom/google/android/settings/security/SecurityContentManager$Entry$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getOnClickBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mOnClickBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getOrder()I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mOrder:I

    return p0
.end method

.method public getSecurityLevel()Lcom/google/android/settings/security/SecurityLevel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSecurityLevel:Lcom/google/android/settings/security/SecurityLevel;

    return-object p0
.end method

.method public getSecuritySourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSecuritySourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$Entry;->mTitle:Ljava/lang/String;

    return-object p0
.end method
