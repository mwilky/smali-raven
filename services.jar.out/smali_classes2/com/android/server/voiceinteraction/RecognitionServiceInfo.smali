.class Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
.super Ljava/lang/Object;
.source "RecognitionServiceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionServiceInfo"


# instance fields
.field private final mParseError:Ljava/lang/String;

.field private final mSelectableAsDefault:Z

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method private constructor <init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    iput-object p3, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-void
.end method

.method static getAvailableServices(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/RecognitionServiceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v4, v5}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error in getAvailableServices: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecognitionServiceInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.speech"

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No android.speech meta-data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    new-instance v3, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v3

    :cond_1
    :try_start_3
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "recognition-service"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    nop

    invoke-virtual {v8, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move v1, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    goto :goto_2

    :cond_4
    :try_start_5
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with recognition-service tag"

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing recognition service meta-data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public isSelectableAsDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    return v0
.end method
