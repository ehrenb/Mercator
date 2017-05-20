.class Lcm/aptoide/pt/preferences/managed/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/preferences/managed/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcm/aptoide/pt/preferences/managed/Preferences;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
