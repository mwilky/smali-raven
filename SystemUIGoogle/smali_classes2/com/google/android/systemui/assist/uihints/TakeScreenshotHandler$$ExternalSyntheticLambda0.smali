.class public final synthetic Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;->$r8$lambda$csP2_MYBsYscfEqGKBTE8f7bLf8(Lcom/google/android/systemui/assist/uihints/TakeScreenshotHandler;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    return-void
.end method
