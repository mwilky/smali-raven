.class final enum Lcom/google/android/settings/security/SecurityLevel;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/settings/security/SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/settings/security/SecurityLevel;

.field public static final enum CRITICAL_WARNING:Lcom/google/android/settings/security/SecurityLevel;

.field public static final enum INFORMATION:Lcom/google/android/settings/security/SecurityLevel;

.field public static final enum NONE:Lcom/google/android/settings/security/SecurityLevel;

.field public static final enum RECOMMENDATION:Lcom/google/android/settings/security/SecurityLevel;

.field public static final enum SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/SecurityLevel;


# instance fields
.field private final mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

.field private final mEntryIconResId:I

.field private final mWarningCardIconResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v6, Lcom/google/android/settings/security/SecurityLevel;

    sget-object v7, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->LOW:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const-string v1, "SECURITY_LEVEL_UNKNOWN"

    const/4 v2, 0x0

    const v3, 0x7f02031f

    const v4, 0x7f02031f

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/settings/security/SecurityLevel;-><init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V

    sput-object v6, Lcom/google/android/settings/security/SecurityLevel;->SECURITY_LEVEL_UNKNOWN:Lcom/google/android/settings/security/SecurityLevel;

    new-instance v8, Lcom/google/android/settings/security/SecurityLevel;

    const-string v1, "NONE"

    const/4 v2, 0x1

    const v3, 0x7f020323

    const v4, 0x7f020323

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/settings/security/SecurityLevel;-><init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V

    sput-object v8, Lcom/google/android/settings/security/SecurityLevel;->NONE:Lcom/google/android/settings/security/SecurityLevel;

    new-instance v9, Lcom/google/android/settings/security/SecurityLevel;

    const-string v1, "INFORMATION"

    const/4 v2, 0x2

    const v3, 0x7f020320

    const v4, 0x7f020321

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/settings/security/SecurityLevel;-><init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V

    sput-object v9, Lcom/google/android/settings/security/SecurityLevel;->INFORMATION:Lcom/google/android/settings/security/SecurityLevel;

    new-instance v0, Lcom/google/android/settings/security/SecurityLevel;

    sget-object v15, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->MEDIUM:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const-string v11, "RECOMMENDATION"

    const/4 v12, 0x3

    const v13, 0x7f020324

    const v14, 0x7f020325

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/google/android/settings/security/SecurityLevel;-><init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V

    sput-object v0, Lcom/google/android/settings/security/SecurityLevel;->RECOMMENDATION:Lcom/google/android/settings/security/SecurityLevel;

    new-instance v1, Lcom/google/android/settings/security/SecurityLevel;

    sget-object v21, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->HIGH:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const-string v17, "CRITICAL_WARNING"

    const/16 v18, 0x4

    const v19, 0x7f020326

    const v20, 0x7f020327

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/google/android/settings/security/SecurityLevel;-><init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V

    sput-object v1, Lcom/google/android/settings/security/SecurityLevel;->CRITICAL_WARNING:Lcom/google/android/settings/security/SecurityLevel;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/settings/security/SecurityLevel;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/android/settings/security/SecurityLevel;->$VALUES:[Lcom/google/android/settings/security/SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/settings/security/SecurityLevel;->mEntryIconResId:I

    iput p4, p0, Lcom/google/android/settings/security/SecurityLevel;->mWarningCardIconResId:I

    iput-object p5, p0, Lcom/google/android/settings/security/SecurityLevel;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/settings/security/SecurityLevel;
    .locals 1

    const-class v0, Lcom/google/android/settings/security/SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/settings/security/SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/settings/security/SecurityLevel;
    .locals 1

    sget-object v0, Lcom/google/android/settings/security/SecurityLevel;->$VALUES:[Lcom/google/android/settings/security/SecurityLevel;

    invoke-virtual {v0}, [Lcom/google/android/settings/security/SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/settings/security/SecurityLevel;

    return-object v0
.end method


# virtual methods
.method public getAttentionLevel()Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityLevel;->mAttentionLevel:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    return-object p0
.end method

.method public getEntryIconResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/security/SecurityLevel;->mEntryIconResId:I

    return p0
.end method

.method public getWarningCardIconResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/security/SecurityLevel;->mWarningCardIconResId:I

    return p0
.end method
