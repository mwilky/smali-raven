.class final Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TvSystemUIModule_ProvideAllowNotificationLongPressFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;

    invoke-direct {v0}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/tv/TvSystemUIModule_ProvideAllowNotificationLongPressFactory;

    return-object v0
.end method
