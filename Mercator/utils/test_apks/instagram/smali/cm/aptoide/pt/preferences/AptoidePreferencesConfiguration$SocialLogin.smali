.class public final enum Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;
.super Ljava/lang/Enum;
.source "AptoidePreferencesConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

.field public static final enum FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

.field public static final enum GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    .line 84
    new-instance v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->FACEBOOK:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->GOOGLE:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->$VALUES:[Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->$VALUES:[Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    invoke-virtual {v0}, [Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration$SocialLogin;

    return-object v0
.end method
