.class public Lcom/android/settings/wifi/slice/WifiSliceItem;
.super Ljava/lang/Object;
.source "WifiSliceItem.java"


# static fields
.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private final mConnectedState:I

.field private final mContext:Landroid/content/Context;

.field private final mHasInternetAccess:Z

.field private final mKey:Ljava/lang/String;

.field private final mLevel:I

.field private final mSecurity:I

.field private final mShouldEditBeforeConnect:Z

.field private final mShouldShowXLevelIcon:Z

.field private final mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400f4
        0x7f040165
        0x7f04016a
        0x7f040169
        0x7f040168
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mHasInternetAccess:Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getLevel()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldShowXLevelIcon()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->shouldShowXLevelIcon()Z

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public getConnectedState()I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, ","

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    if-ltz v1, :cond_1

    sget-object v7, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    array-length v8, v7

    if-ge v1, v8, :cond_1

    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v0, v8, v5

    aput-object v3, v8, v4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    aget v1, v7, v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    new-array v1, v6, [Ljava/lang/CharSequence;

    aput-object v0, v1, v5

    aput-object v3, v1, v4

    iget v0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    const v0, 0x7f040166

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    const v0, 0x7f040167

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    return p0
.end method

.method public getSecurity()I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    return p0
.end method

.method public shouldShowXLevelIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    return p0
.end method
