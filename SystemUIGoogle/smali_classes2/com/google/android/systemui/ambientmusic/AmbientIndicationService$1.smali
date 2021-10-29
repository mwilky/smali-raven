.class Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AmbientIndicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationService;->onUserSwitched()V

    return-void
.end method
