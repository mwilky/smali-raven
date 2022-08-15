.class public Lcom/android/server/soundtrigger/SoundTriggerService$1;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"

# interfaces
.implements Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper()Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic val$middlemanIdentity:Landroid/media/permission/Identity;

.field public final synthetic val$originatorIdentity:Landroid/media/permission/Identity;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object p0

    return-object p0
.end method

.method public listModuleProperties(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    invoke-static {p1, v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I

    move-result p0

    return p0
.end method
