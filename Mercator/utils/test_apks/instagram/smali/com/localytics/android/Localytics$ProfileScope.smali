.class public final enum Lcom/localytics/android/Localytics$ProfileScope;
.super Ljava/lang/Enum;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/localytics/android/Localytics$ProfileScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/Localytics$ProfileScope;

.field public static final enum APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

.field public static final enum ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;


# instance fields
.field private final scope:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/localytics/android/Localytics$ProfileScope;

    const-string v1, "ORGANIZATION"

    const-string v2, "org"

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/Localytics$ProfileScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    .line 110
    new-instance v0, Lcom/localytics/android/Localytics$ProfileScope;

    const-string v1, "APPLICATION"

    const-string v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/localytics/android/Localytics$ProfileScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/Localytics$ProfileScope;

    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->ORGANIZATION:Lcom/localytics/android/Localytics$ProfileScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/localytics/android/Localytics$ProfileScope;->APPLICATION:Lcom/localytics/android/Localytics$ProfileScope;

    aput-object v1, v0, v4

    sput-object v0, Lcom/localytics/android/Localytics$ProfileScope;->$VALUES:[Lcom/localytics/android/Localytics$ProfileScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/localytics/android/Localytics$ProfileScope;->scope:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/Localytics$ProfileScope;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/localytics/android/Localytics$ProfileScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/Localytics$ProfileScope;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/Localytics$ProfileScope;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/localytics/android/Localytics$ProfileScope;->$VALUES:[Lcom/localytics/android/Localytics$ProfileScope;

    invoke-virtual {v0}, [Lcom/localytics/android/Localytics$ProfileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/Localytics$ProfileScope;

    return-object v0
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/localytics/android/Localytics$ProfileScope;->scope:Ljava/lang/String;

    return-object v0
.end method
