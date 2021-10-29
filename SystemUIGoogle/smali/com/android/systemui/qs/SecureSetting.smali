.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"


# instance fields
.field private final mDefaultValue:I

.field private mListening:Z

.field private mObservedValue:I

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/SecureSetting;-><init>(Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/qs/SecureSetting;->mDefaultValue:I

    iput p5, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    iput p4, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mDefaultValue:I

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(IZ)V

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget p1, p0, Lcom/android/systemui/qs/SecureSetting;->mDefaultValue:I

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    :goto_0
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    iget-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-interface {v0, v1, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    return-void
.end method
