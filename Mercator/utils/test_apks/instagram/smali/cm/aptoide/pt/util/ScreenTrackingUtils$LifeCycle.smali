.class public final enum Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;
.super Ljava/lang/Enum;
.source "ScreenTrackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/util/ScreenTrackingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

.field public static final enum CREATE:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

.field public static final enum DESTROY:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->CREATE:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    new-instance v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    const-string v1, "DESTROY"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->DESTROY:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    sget-object v1, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->CREATE:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->DESTROY:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->$VALUES:[Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->$VALUES:[Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    invoke-virtual {v0}, [Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    return-object v0
.end method
