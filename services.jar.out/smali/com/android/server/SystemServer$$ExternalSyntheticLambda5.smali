.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/NetworkTimeUpdateService;

.field public final synthetic f$11:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$12:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$13:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$14:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/net/ConnectivityManager;

.field public final synthetic f$5:Lcom/android/server/NetworkManagementService;

.field public final synthetic f$6:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$7:Lcom/android/server/VpnManagerService;

.field public final synthetic f$8:Lcom/android/server/VcnManagementService;

.field public final synthetic f$9:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iput-object p3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iput-boolean p4, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$3:Z

    iput-object p5, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$4:Landroid/net/ConnectivityManager;

    iput-object p6, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p8, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/VpnManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$8:Lcom/android/server/VcnManagementService;

    iput-object p10, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/CountryDetectorService;

    iput-object p11, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$10:Lcom/android/server/NetworkTimeUpdateService;

    iput-object p12, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$11:Lcom/android/server/input/InputManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$12:Lcom/android/server/TelephonyRegistry;

    iput-object p14, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$13:Lcom/android/server/media/MediaRouterService;

    iput-object p15, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$14:Lcom/android/server/MmsServiceBroker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/SystemServer;

    iget-object v1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iget-boolean v3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$3:Z

    iget-object v4, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$4:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/NetworkManagementService;

    iget-object v6, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/VpnManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$8:Lcom/android/server/VcnManagementService;

    iget-object v9, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/CountryDetectorService;

    iget-object v10, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$10:Lcom/android/server/NetworkTimeUpdateService;

    iget-object v11, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$11:Lcom/android/server/input/InputManagerService;

    iget-object v12, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$12:Lcom/android/server/TelephonyRegistry;

    iget-object v13, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$13:Lcom/android/server/media/MediaRouterService;

    iget-object v14, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;->f$14:Lcom/android/server/MmsServiceBroker;

    invoke-static/range {v0 .. v14}, Lcom/android/server/SystemServer;->$r8$lambda$jmaWUpWMxP4IiPakY5L6Y7rVWik(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method
