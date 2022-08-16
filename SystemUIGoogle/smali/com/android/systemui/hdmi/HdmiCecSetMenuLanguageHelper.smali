.class public final Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;
.super Ljava/lang/Object;
.source "HdmiCecSetMenuLanguageHelper.java"


# instance fields
.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mDenylist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocale:Ljava/util/Locale;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 p1, -0x2

    const-string v0, "hdmi_cec_set_menu_language_denylist"

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;->mDenylist:Ljava/util/HashSet;

    return-void
.end method
