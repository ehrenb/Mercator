.class public final enum Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum ATTACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum CREATE_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum DETACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum START:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

.field public static final enum STOP:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "ATTACH"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->ATTACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 30
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 31
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "CREATE_VIEW"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 32
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "START"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->START:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 33
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 34
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 35
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->STOP:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 36
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "DESTROY_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 37
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "DESTROY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 38
    new-instance v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    const-string v1, "DETACH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DETACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->ATTACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->START:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->STOP:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DETACH:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->$VALUES:[Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->$VALUES:[Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    return-object v0
.end method
