.class public Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
.super Ljava/lang/Object;
.source "FooterButtonPartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;
    }
.end annotation


# instance fields
.field private final buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field private final partnerTheme:I


# direct methods
.method private constructor <init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    iput-object p6, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p7, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p8, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p9, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p10, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p4, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p11, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p5, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    iput-object p12, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$1;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;-><init>(ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    return-void
.end method


# virtual methods
.method public getButtonBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonDisableAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonDisableBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonDisableBackgroundConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonIconConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonIconConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonMinHeightConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonMinHeightConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonRadiusConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRadiusConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonRippleColorAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonRippleColorAlphaConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextColorConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextSizeConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextStyleConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextStyleConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getButtonTextTypeFaceConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->buttonTextTypeFaceConfig:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object p0
.end method

.method public getPartnerTheme()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->partnerTheme:I

    return p0
.end method
