.class Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;
.super Ljava/lang/Object;
.source "SensorPrivacyManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/SensorPrivacyManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackInfo"
.end annotation


# instance fields
.field mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mSensor:I

.field mUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Ljava/util/concurrent/Executor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    iput-object p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mExecutor:Ljava/util/concurrent/Executor;

    iput p3, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mSensor:I

    iput p4, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mUserId:I

    return-void
.end method
