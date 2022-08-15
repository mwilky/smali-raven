.class public final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvInputState"
.end annotation


# instance fields
.field public info:Landroid/media/tv/TvInputInfo;

.field public inputNumber:I

.field public state:I

.field public uid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$TvInputState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
